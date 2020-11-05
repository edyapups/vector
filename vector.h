#pragma once

#include <cstddef>
#include <algorithm>

template<typename T>
struct vector {
    typedef T *iterator;
    typedef T const *const_iterator;

    vector() noexcept;                               // O(1) nothrow
    vector(vector const &);                          // O(N) strong
    vector &operator=(vector const &other);          // O(N) strong

    ~vector();                                       // O(N) nothrow

    T &operator[](size_t i) noexcept;                // O(1) nothrow
    T const &operator[](size_t i) const noexcept;    // O(1) nothrow

    T *data() noexcept;                              // O(1) nothrow
    T const *data() const noexcept;                  // O(1) nothrow
    size_t size() const noexcept;                    // O(1) nothrow

    T &front() noexcept;                             // O(1) nothrow
    T const &front() const noexcept;                 // O(1) nothrow

    T &back() noexcept;                              // O(1) nothrow
    T const &back() const noexcept;                  // O(1) nothrow
    void push_back(T const &);                       // O(1)* strong
    void pop_back() noexcept;                        // O(1) nothrow

    bool empty() const noexcept;                     // O(1) nothrow

    size_t capacity() const noexcept;                // O(1) nothrow
    void reserve(size_t);                            // O(N) strong
    void shrink_to_fit();                            // O(N) strong

    void clear() noexcept;                           // O(N) nothrow

    void swap(vector &) noexcept;                    // O(1) nothrow

    iterator begin() noexcept;                       // O(1) nothrow
    iterator end() noexcept;                         // O(1) nothrow

    const_iterator begin() const noexcept;           // O(1) nothrow
    const_iterator end() const noexcept;             // O(1) nothrow

//    iterator insert(iterator pos, T const &);        // O(N) weak
    iterator insert(const_iterator pos, T const &);  // O(N) weak

    iterator erase(const_iterator pos);              // O(N) weak
    iterator erase(const_iterator first, const_iterator last); // O(N) weak

private:
    size_t increase_capacity() const;

    void push_back_realloc(T const &);

    void new_buffer(size_t new_capacity);

    static T *allocate(size_t size);

    static void destroy(T *obj, size_t size);

    static T *copy_and_construct(T const *src, size_t size, size_t capacity);

private:
    T *data_;
    size_t size_;
    size_t capacity_;
};

template<typename T>
vector<T>::vector() noexcept :
        data_(nullptr),
        size_(0),
        capacity_(0) {}

template<typename T>
T *vector<T>::allocate(size_t size) {
    return (size == 0 ? nullptr : static_cast<T *>(operator new(size * sizeof(T))));
}

template<typename T>
void vector<T>::swap(vector &dst) noexcept {
    std::swap(size_, dst.size_);
    std::swap(capacity_, dst.capacity_);
    std::swap(data_, dst.data_);
}

template<typename T>
T &vector<T>::operator[](size_t i) noexcept {
    return data_[i];
}

template<typename T>
T const &vector<T>::operator[](size_t i) const noexcept {
    return data_[i];
}

template<typename T>
T *vector<T>::data() noexcept {
    return data_;
}

template<typename T>
T const *vector<T>::data() const noexcept {
    return data_;
}

template<typename T>
size_t vector<T>::size() const noexcept {
    return size_;
}

template<typename T>
T &vector<T>::front() noexcept {
    return *data_;
}

template<typename T>
T const &vector<T>::front() const noexcept {
    return *data_;
}

template<typename T>
T &vector<T>::back() noexcept {
    return *(data_ + size_ - 1);
}

template<typename T>
T const &vector<T>::back() const noexcept {
    return *(data_ + size_ - 1);
}

template<typename T>
bool vector<T>::empty() const noexcept {
    return size_ == 0;
}

template<typename T>
size_t vector<T>::capacity() const noexcept {
    return capacity_;
}

template<typename T>
typename vector<T>::iterator vector<T>::begin() noexcept {
    return data_;
}

template<typename T>
typename vector<T>::iterator vector<T>::end() noexcept {
    return data_ + size_;
}

template<typename T>
typename vector<T>::const_iterator vector<T>::begin() const noexcept {
    return data_;
}

template<typename T>
typename vector<T>::const_iterator vector<T>::end() const noexcept {
    return data_ + size_;
}

template<typename T>
size_t vector<T>::increase_capacity() const {
    return capacity_ == 0 ? 1 : capacity_ * 2;
}

template<typename T>
void vector<T>::destroy(T *obj, size_t size) {
    while (size) {
        size--;
        obj[size].~T();
    }
}

template<typename T>
T *vector<T>::copy_and_construct(T const *src, size_t size, size_t capacity) {
    if (capacity != 0) {
        T *tmp = allocate(capacity);
        size_t i = 0;
        try {
            for (; i < size; i++) {
                new(tmp + i) T(src[i]);
            }
        } catch (...) {
            destroy(tmp, i);
            operator delete(tmp);
            throw;
        }
        return tmp;
    } else {
        return nullptr;
    }
}

template<typename T>
void vector<T>::new_buffer(size_t new_capacity) {
    vector<T> tmp;
    if (new_capacity != 0) {
        tmp.data_ = copy_and_construct(data_, size_, new_capacity);
        tmp.capacity_ = new_capacity;
        tmp.size_ = size_;
    }
    swap(tmp);
}

template<typename T>
vector<T>::vector(const vector &src) {
    data_ = copy_and_construct(src.data_, src.size_, src.size_);
    size_ = src.size_;
    capacity_ = src.size_;
}

template<typename T>
vector<T> &vector<T>::operator=(const vector &other) {
    if (this != &other) {
        vector<T> tmp(other);
        swap(tmp);
    }
    return *this;
}

template<typename T>
vector<T>::~vector() {
    destroy(data_, size_);
    operator delete(data_);
}

template<typename T>
void vector<T>::push_back_realloc(const T &obj) {
    T copy(obj);
    new_buffer(increase_capacity());
    new(data_ + size_) T(copy);
    size_++;
}

template<typename T>
void vector<T>::push_back(const T &obj) {
    if (size_ == capacity_) {
        push_back_realloc(obj);
    } else {
        new(data_ + size_) T(obj);
        size_++;
    }
}

template<typename T>
void vector<T>::pop_back() noexcept {
    size_--;
    data_[size_].~T();
}

template<typename T>
void vector<T>::reserve(size_t new_capacity) {
    if (new_capacity > capacity_) {
        new_buffer(new_capacity);
    }
}

template<typename T>
void vector<T>::shrink_to_fit() {
    if (capacity_ > size_) {
        new_buffer(size_);
    }
}

template<typename T>
void vector<T>::clear() noexcept {
    destroy(data_, size_);
    size_ = 0;
}

template<typename T>
typename vector<T>::iterator vector<T>::insert(vector::const_iterator pos, const T &obj) {
    size_t ind = pos - begin();
    push_back(obj);
    for (size_t i = size_ - 1; i > ind; i--) {
        std::swap(data_[i], data_[i - 1]);
    }
    return begin() + ind;
}

template<typename T>
typename vector<T>::iterator vector<T>::erase(vector::const_iterator first, vector::const_iterator last) {
    ptrdiff_t len = last - first;
    size_t ind = first - begin();
    if (!len) {
        return begin() + ind;
    }
    for (size_t i = ind; i < size_ - len; i++) {
        data_[i] = data_[i + len];
    }
    for (size_t i = 0; i < len; i++) {
        data_[size_ - i - 1].~T();
    }
    size_ -= len;
    return begin() + ind;
}

template<typename T>
typename vector<T>::iterator vector<T>::erase(vector::const_iterator pos) {
    return erase(pos, pos + 1);
}



