//
//  Team.swift
//  TeamIntroduce
//
//  Created by 전성진 on 5/27/24.
//

import Foundation

struct Team {
    let position: String //역할
    let name: String //이름
    let age: Int //나이
    let gender: Character //성별
    let imageName: String //프로필사진
    let mbti: String //MBTI
    let area: String //거주지
    let hobby: String //취미
    let hope: String //하고싶은말
}

extension Team {
    static let list: [Team] = [
        Team(position: "팀장", name: "전성진", age: 27, gender: "M", imageName: "전성진", mbti: "INTP", area: "인천", hobby: "만화보기, 게임, 노래방", hope: "부족하지만 열심히 따라 가겠습니다. 잘 부탁드립니다.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
        ,Team(position: "팀원", name: "김동준", age: 27, gender: "M", imageName: "김동준", mbti: "INTP", area: "인천", hobby: "만화보기, 게임, 노래방", hope: "잘 부탁드립니다.")
        ,Team(position: "팀원", name: "안지현", age: 27, gender: "F", imageName: "안지현", mbti: "INTP", area: "인천", hobby: "만화보기, 게임, 노래방", hope: "잘 부탁드립니다.")
        ,Team(position: "팀원", name: "장수빈", age: 27, gender: "M", imageName: "장수빈", mbti: "INTP", area: "인천", hobby: "만화보기, 게임, 노래방", hope: "잘 부탁드립니다.")
        ,Team(position: "팀원", name: "김윤홍", age: 27, gender: "M", imageName: "김윤홍", mbti: "INTP", area: "인천", hobby: "만화보기, 게임, 노래방", hope: "잘 부탁드립니다.")
        ,Team(position: "팀원", name: "윤대성", age: 27, gender: "M", imageName: "윤대성", mbti: "INTP", area: "인천", hobby: "만화보기, 게임, 노래방", hope: "잘 부탁드립니다.")
    ]
}
