
program main
IMPLICIT NONE

    real :: numbers(5) !one dimensional integer array
    integer :: matrix(3,3), i , j !two dimensional real array
    external :: sgesv
    real     :: a(2, 2)  ! Matrix A.
    real     :: b(2)     ! Vector b/x.
    real     :: pivot(2) ! Pivot indices (list of swap operations).
    integer  :: rc ,dim1_size,dim2_size     ! Return code.


   ! a = reshape([ 2., 3., 1., 1. ], [ 2, 2 ])
    a = reshape([ 4.,33.,25.,14.], [ 2, 2 ])
    b = [ 6., 7. ]

   call sgesv(2, 1, a, 2, pivot, b, 2, rc)

 ! Get the size of the first dimension
  dim1_size = size(a, dim=1)
  print *, "Size of dimension 1:", dim1_size


    ! Get the size of the second dimension
  dim2_size = size(a, dim=2)
  print *, "Size of dimension 2:", dim2_size




   !assigning some values to the array matrix
   do i=1,3
      do j = 1, 3
         matrix(i, j) = i+j
        ! print*,"Matrix= ",matrix(i,j)
      end do
   end do

print*,"b=",rc
 print '("Solution (x1, x2): ", f0.4, ", ", f0.4)', b

end program main

