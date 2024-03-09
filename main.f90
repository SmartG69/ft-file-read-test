program ReadFile
    implicit none
    character(256) :: filePath
    character(256) :: line
    
    ! File path
    filePath = "your_file_path.txt"
    
    ! Open the file
    open(unit=10, file=filePath, status='old', action='read')
    
    ! Read and print each line of the file
    do
        read(10, '(A)', end=100) line
        print *, line
    end do
    
100 continue
    
    ! Close the file
    close(unit=10)
    
end program ReadFile
