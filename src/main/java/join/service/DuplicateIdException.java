package join.service;

public class DuplicateIdException extends RuntimeException {
    public DuplicateIdException() {
        super();
    }

    public DuplicateIdException(String message) {
        super(message); // 추가 필요
    }
}
