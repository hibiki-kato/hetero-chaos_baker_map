program sample
  implicit none ! 暗黙の型宣言禁止

  ! 変数を使う前には必ず以下のように宣言を行う
  integer :: n, m, result1 ! 整数型の変数の宣言
  real :: x, result2    ! 実数型の変数の宣言

  ! 代入
  n = 10
  x = 3.14
  m = 3
  ! 表示
  write(*,*) 'integer => ', n
  write(*,*) 'real => ', x
  write(*,*) 'product', n*x
  write(*,*) 'division', n/x
  result1 = n/m
  result2 = n/m
  write(*,*) 'result1', result1
  write(*,*) 'result2', result2
  stop
end program sample
