InputHelper
===========
#NOTE: InputHelper Not Support UITableView And Autolayout Now.
===========
#How to use ? 

***
*[inputHelper setupInputHelperForView:view withDismissType:InputHelperDismissTypeNone];*
>Keyboard will hide when you click the done button

#OR
*[inputHelper setupInputHelperForView:view withDismissType:InputHelperDismissTypeCleanMaskView];*
>Keyboard will hide when you Touch outside of the Keyboard

#OR
*[inputHelper setupInputHelperForView:view withDismissType:InputHelperDismissTypeTapGusture];*
>Keyboard will hide when you Touch the view
***

AND YOU CAN USER THOSE METHODS FOR A CONTROLLER,JUST USE controller.view .

JUST NEED ONE LINE CODES,IT CAN AUTO ADJUST THE FRAME OF THE 
#UITextField/UITextView/UISearchBar
