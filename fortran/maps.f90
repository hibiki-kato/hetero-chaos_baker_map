module maps
      implicit none

contains
   subroutine bakers_map(x, y)
      real(8), intent(inout) :: x, y
      if (x < 0.5) then
            x = 2.0 * x
            y = 0.5 * y
      else
            x = 2.0 * x - 1
            y = 0.5 + 0.5 * y
      end if
   end subroutine bakers_map

   subroutine rolling_bakers_map(x, y)
      real(8), intent(inout) :: x, y
      if (x < 0.5) then
            x = 2.0 * x
            y = 0.5 * y
      else
            x = 2.0 - 2.0 * x
            y = 1.0 - 0.5 * y
      end if
   end subroutine rolling_bakers_map

   subroutine 3Dhetero-chaos_bakers_map(x, y, z, a, b)
      real(8), intent(inout) :: x, y, z
      real(8), intent(in) :: a, b
      

   end subroutine 3Dhetero-chaos_bakers_map

   subroutine logistic_map(x, a_in)
      real(8), intent(inout) :: x
      real(8), intent(in) :: a_in
      
      x = a_in * x * (1.0 - x)
   end subroutine logistic_map

   subroutine coupled_logistic_map(x, y, a, b, c, d)
      real(8), intent(inout) :: x, y
      real(8), intent(in) :: a, b, c, d

      x = a * x * (1.0 - x) + b * y
      y = c * y * (1.0 - y) + d * x
   end subroutine coupled_logistic_map
      
end module maps