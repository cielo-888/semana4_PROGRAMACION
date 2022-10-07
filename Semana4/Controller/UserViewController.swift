//
//  UserViewController.swift
//  Semana4
//
//  Created by MAC11 on 7/10/22.
//

import UIKit

class UserViewController: UIViewController {
    
    let userViewModel: UserViewModel = UserViewModel()
    

    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lastname: UITextField!
    
    @IBOutlet weak var birthday: UITextField!
    
    @IBOutlet weak var phonenumber: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func onTapUserCreate(_ sender: UIButton) {
        
        let user: User = User(
            name: txtName.text!,
            lastname: lastname.text!,
            birthday: birthday.text!,
            phonenumber: phonenumber.text!,
            address: address.text!
                )
                userViewModel.createUser(user: user)
    }
    
    
    @IBAction func onTapListUsers(_ sender: UIButton) {
        let users: [User] = userViewModel.getUsers()
                print("users \(users)")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
