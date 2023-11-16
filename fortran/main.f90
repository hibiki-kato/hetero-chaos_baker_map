program outputToFile
   use maps
   implicit none
   integer, parameter :: n = 100
   character(len=20) :: filename
   integer :: i, unit
   real(8) :: x, y
   x = 0.1
   y = 0.9

   write (filename, '(a, i0, a)') "baker_", n, ".txt"

   print *, "Writing to file ", filename

   ! Open the file for writing
   open(newunit=unit, file=filename, status="replace")

   do i = 1, n
         call rolling_bakers_map(x, y)
         write(unit, *) x, y
   end do

   ! Close the file
   close(unit)

end program outputToFile
