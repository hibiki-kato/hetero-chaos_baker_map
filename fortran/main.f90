program outputToFile
   use maps
   implicit none
   integer, parameter :: n = 10000
   integer, parameter :: damp = 0
   character(len=40) :: filename
   integer :: i, unit
   real(8) :: x, y
   x = rand(0)
   y = rand(0)

   write (filename, '(a, i0, a)') "../../trajectory/baker_", n, ".txt"

   print *, "Writing to file ", filename

   ! Open the file for writing
   open(newunit=unit, file=filename, status="replace")

   ! Dump the first few points
   do i = 1, damp
      call quarter_bakers_map(x, y)
      x = x + rand(0) * 1e-16
      y = y + rand(0) * 1e-16
   end do

   do i = 1, n
      call quarter_bakers_map(x, y)
      x = x + rand(0) * 1e-16
      y = y + rand(0) * 1e-16
      write(unit, *) x, y
   end do

   ! Close the file
   close(unit)

end program outputToFile
