//
//  File.swift
//  AsincLibrary
//
//  Created by Álvaro Entrena Casas on 8/5/25.
//

import Foundation
import Security
import KeychainAccess

@discardableResult func saveKC(key: String, value: String) -> Bool {
    let keychain = Keychain(service: Constants.mykeychain) //Creamos el llavero de login
    keychain[key] = value //Obtenemos el token del llavero del login
    if let _ = keychain[key] {
        return true
    } else {
        return false
    }
}

func loadKC(key: String) -> String? {
    let keychain = Keychain(service: Constants.mykeychain) //Cargamos el llavero de login
    if let value = keychain[key] { //Cargamos el token del llavero del login
        return value
    } else {
        return ""
    }
}

func deleteKC(key: String) -> Bool {
    let keychain = Keychain(service: Constants.mykeychain)
    keychain[key] = nil
    return keychain[key] == nil
}

// SEMANTIC VERSIONING

// 1.0.0
// MAJOR: Tiene que cambiar al menos el 80% del código fuente
// MINOR: Cualquier cambio remarcable, funcionalidades nuevas, cambios en el diseño
// PATCH: Cualquier arreglo o cambios muy pequeños
