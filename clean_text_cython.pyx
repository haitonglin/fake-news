# clean_text_cython.pyx
def clean_text(text):
    cdef int i, n = len(text)
    cdef str lower = text.lower()
    cdef list result = []

    for i in range(n):
        ch = lower[i]
        if ch.isalpha() or ch == ' ':
            result.append(ch)
    
    return ''.join(result)
