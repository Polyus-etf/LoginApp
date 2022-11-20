//
//  PesionalData.swift
//  LoginApp
//
//  Created by Ирина on 20.11.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    static func getUsers() -> [User] {
        [
            User(
                login: "polyus",
                password: "1984",
                person: Person(
                    name: "Сергей",
                    surname: "Поляков",
                    hobby: "Программирование",
                    work: "Неопарк"
                    )
            ),
            User(
                login: "irsen",
                password: "1990",
                person: Person(
                    name: "Ирина",
                    surname: "Бобина",
                    hobby: "Сноубординг, путешествия",
                    work: "Сберлизинг"
                    )
            ),
            User(
                login: "defiler",
                password: "1990",
                person: Person(
                    name: "Дмитрий",
                    surname: "Поляков",
                    hobby: "Гейминг",
                    work: "-"
                    )
            )
        ]
    }
}

struct Person {
    let name: String
    let surname: String
    let hobby: String
    let work: String
}
