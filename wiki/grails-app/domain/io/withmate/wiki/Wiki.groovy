package io.withmate.wiki

class Wiki {

    /**
     * 위키 제목
     */
    String title

    /**
     * 버전
     */
    int rev

    /**
     * 저장위치
     */
    String contentUrl

    /**
     * 작성자
     */
    String email


    static constraints = {
        title nullable: false
        rev size:1..3
        email email: true, blank: false
        contentUrl blank: false, nullable: false
    }
}
