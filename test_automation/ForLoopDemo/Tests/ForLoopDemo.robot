
*** Test Cases ***
#Forloop1
    #: FOR  ${i}  IN RANGE  1  10
    #\  Log To Console  ${i}

#Forloop2.1
    #: FOR  ${I}  IN  1 2 3 4 5 6 7 8 9
    #\  Log To Console  ${i}

#Forloop2.2
    #: FOR  ${i}  IN  1  2  3  4  5  6  7  8  9
    #\  Log To Console  ${i}


#Forloop3withList
    #@{items}  create list  1  2  3  4  5  6  7  8  9
    #: FOR  ${i}  IN  @{items}
    #\  Log To Console  ${i}

#Forloop4
    #: FOR  ${i}  IN  john  david  smith  scott
    #\  Log to Console  ${i}

#Forloop5
    #@{nameslist}  create list  john  david  smith  scott
    #: FOR  ${i}  IN  @{nameslist}
    #\  Log To Console  ${i}

Forloop6withExit
    @{item}  create list  1  2  3  4  5
    : FOR  ${i}  IN  @{item}
    \  Log To Console  ${i}
    \  Exit For Loop If  ${i}==3

