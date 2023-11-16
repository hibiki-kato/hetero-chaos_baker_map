
program PO
   use maps
   implicit none

   integer, parameter :: dp = selected_real_kind(15, 307)
   integer, parameter :: max_iter = 100 ! 最大反復回数
   real(dp), parameter :: tol = 1.0e-12_dp ! 許容誤差
   real(dp) :: x0, y0, x, y, fx, fy, dfx, dfy ! 初期値、反復変数、関数値、導関数値
   integer :: iter ! 反復回数

   ! 初期値の設定
   x0 = 0.5_dp
   y0 = 0.5_dp

   ! ニュートン法による反復
   do iter = 1, max_iter
      ! 関数値と導関数値の計算
      call rolling_bakers_map(x0, y0)
      
      
      ! 反復変数の更新
      x = x0 - fx / dfx
      
      ! 収束判定
      if (abs(x - x0) < tol) then
      write(*, *) "Converged to x = ", x, " after ", iter, " iterations."
      exit
      end if
      
      ! 反復変数の更新
      x0 = x
   end do

   ! 収束しなかった場合
   write(*, *) "Failed to converge after ", max_iter, " iterations."

   end program PO
