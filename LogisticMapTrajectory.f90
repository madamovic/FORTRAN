program logistic_map
    implicit none
    integer::NSTEPS,i
    real(8)::r,x0,x1
    print*,'Enter NSTEPS,r,x0:'
    read*,NSTEPS,r,x0
    print*,'NSTEPS= ',NSTEPS
    print*,'r= ',r
    print*,'x0= ',x0

    open(unit=33,file='traj.dat')
    write(33,*) 0,x0,0
    do i=1,NSTEPS
        x1=r*x0*(1.0D0-x0)
        write(33,*) 2*i-3,x0,x1
        write(33,*) 2*i-2,x1,x1
        x0=x1
    end do
    close(33)
end program
