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

   subroutine hetero_chaos_bakers_map3D(x, y, z, a, b)
      real(8), intent(inout) :: x, y, z
      real(8), intent(in) :: a, b
   end subroutine hetero_chaos_bakers_map3D

   subroutine half_bakers_map(x, y)
      real(8), intent(inout) :: x, y
      if (x < 0.5) then
         x = y
         y = 1-x
      else
         x = 2*x-1
         y = y*0.5
      end if
   end subroutine half_bakers_map

   subroutine quarter_bakers_map(x, y)
      real(8), intent(inout) :: x, y
      if (x < 0.5) then
         x = 2*x
         y = 0.5*y
      else
         if (y < 0.5) then
            x = 2*x-1 
            y = y+0.5
         else
            x = 2*y-1
            y = x
         end if
      end if
   end subroutine quarter_bakers_map

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