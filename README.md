# Edit Actions for Table View (Swift 3)

## Simple Way

The simple way of using it is to delete with the predefined behavior. We just override the method `tableView(_:commit:forRowAt:)`

Example:

```swift3
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
        // do something here
    }
}
```

## Getting More Advanced

The other way is a bit more complex, but we can add custom actions formatted any way we want. The method above must also be implemented, as we have to call it from our next implementation.

The key method we have to override for achieving the custom behavior is `tableView(_:editActionsForRowAt:)`. Here, we create instances of `UITableViewRowAction` and return all created items as an array. And they will be shown in the reverse order when the user swipes the cell left.

For example, the code we have for this method is:

```swift 
func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    let defaultRowAction = UITableViewRowAction(style: .normal, title: "Set Default", handler: { action, indexpath in
        NSLog("Setting Default")
    });
    
    
    let deleteRowAction = UITableViewRowAction(style: .destructive, title: "Delete", handler: { action, indexpath in
        NSLog("Delete")
    });
    
    return [deleteRowAction, defaultRowAction];
}
```

Here, our example returns (from right to left) the Delete and Set Default action respectively.