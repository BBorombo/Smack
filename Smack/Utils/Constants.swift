//
//  Constants.swift
//  Smack
//
//  Created by Erwan Rombo on 22/09/2017.
//  Copyright © 2017 Borombo. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://url.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail"
let URL_GET_CHANNELS = "\(BASE_URL)channel/"
let URL_GET_MESSAGES = "\(BASE_URL)message/byChannel"

// Colors
let smackPurplePlaceholder = #colorLiteral(red: 0.3647058824, green: 0.4045833051, blue: 0.8775706887, alpha: 0.5)

// Notification
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChenged")
let NOTIF_CHANNELS_LOADED = Notification.Name("channelsLoaded")
let NOTIF_CHANNELS_SELECTED = Notification.Name("channelSelected")

// Headers
let HEADER = ["Content-Type": "application/json; charset=utf-8"]
let BEARER_HEADER = [
    "Authorization":"Bearer",
    "Content-Type": "application/json charset=utf-8"
]

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND_TO_CHANNEL = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
