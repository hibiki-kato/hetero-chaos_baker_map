program outputToFile
   use maps
   implicit none
   integer, parameter :: n = 10000
   character(len=20) :: filename
   integer :: i, unit
   real(8) :: x, y
   x = rand(0)
   y = rand(0)

   write (filename, '(a, i0, a)') "baker_", n, ".txt"

   print *, "Writing to file ", filename

   ! Open the file for writing
   open(newunit=unit, file=filename, status="replace")

   do i = 1, n
         call bakers_map(x, y)
         x = x + rand(0) * 1e-10
         y = y + rand(0) * 1e-10
         write(unit, *) x, y
   end do

   ! Close the file
   close(unit)

end program outputToFile
