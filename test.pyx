cimport cython

cdef class MyType(object):
    cdef:
        public str name


cdef void my_fn(int i):
    print(i)

cdef class MyOtherType(MyType):
    cdef:
        public str full_name
    
    cdef no_return_tp(self):
        print(self.full_name)
    
    cpdef caller(self, int i):
        return i
    
    cdef int has_return_tp(self):
        return 1
