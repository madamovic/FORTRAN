program circle_area
    implicit none
    integer,parameter::N=10
    real,parameter::PI=3.14
    real,dimension(N)::R
    real::area,perimeter
    integer::i
    do i=1,N
        print*,'Enter radius of circle:'
        read*,R(i)
        print*,'i= ',i,'R(i)= ',R(i)
    end do
    open(UNIT=13,FILE='AREA.DAT')
    do i=1,N
        perimeter=2*PI*R(i)
        area=PI*R(i)**2
        write(13,*)i,') R= ',R(i),' area= ',area,' perimeter= ',perimeter
    end do
    close(13)
end program circle_area
