package com.gtunes.controller
import  com.gtunes.domain.User

class UserController {
    def register() {
        if (request.method == 'POST') {
            def u = new User(params)
            u.properties['login', 'password', 'firstName', 'lastName'] = params
            if (u.password != params.confirm) {
                u.errors.rejectValue("password", "user.password.dontmatch")
                return [user: u]
            } else if (u.save()) {
                session.user = u
                redirect controller: "store"
            } else {
                return [user: u]
            }
        }
    }

    def logout() {
        session.user = null
        redirect controller: 'store'
    }
}