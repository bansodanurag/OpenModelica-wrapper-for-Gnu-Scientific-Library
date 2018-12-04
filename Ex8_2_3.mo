model Ex8_2_3
function Ex
input Integer siz;
output Integer [2] a;
external "C" block1(siz,a ) annotation(Include="#include <stdio.h>
#include <gsl/gsl_block.h>


 int block1 (size_t siz,int a[2])
{
  gsl_block * b = gsl_block_alloc (siz);
a[0]=b->size;
a[1]=b->data;

  gsl_block_free (b);
  return a;
}",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer siz=100;
Integer a[2];
equation
a=Ex(siz);
end Ex8_2_3;