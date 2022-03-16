// Creator
/*
Product 타입의 객체를 반환하는 팩토리 메서드를 선언
Creator 클래스는 팩토리 메서드를 기본적으로 구현
ConcreteProduct 객체를 반환
*/
protocol PizzaMaker {
    func pizzaFactory() -> Pizza // Product Protocol
    func makePizza() -> String
}

extension PizzaMaker { // extension 작성
    func makePizza() -> String {
        let product = pizzaFactory() // Product 반환
        return product.make()
    }
}

// Product
// 팩토리 메소드가 생성하는 객체의 인터페이스를 정의
protocol Pizza {
    func make() -> String
}

// Concrete Creators
// 팩토리 메소드를 구현하고 Concrete Product 인스턴스를 반환하는 객체
class CheesePizzaMaker: PizzaMaker {
    public func pizzaFactory() -> Pizza {
        return CheesePizza()
    }
}

class PepperoniPizzaMaker: PizzaMaker {
    public func pizzaFactory() -> Pizza {
        return PepperoniPizza()
    }
}

// Concrete Products
// Product 클래스에 정의된 인터페이스를 실제로 구현
class CheesePizza: Pizza {
    func make() -> String {
        print("CheesePizza 만들기")
        return "CheesePizza"
    }
}

class PepperoniPizza: Pizza {
    func make() -> String {
        print("PepperoniPizza 만들기")
        return "PepperoniPizza"
    }
}


// 사용 예시
func concreteClient(creator: PizzaMaker) {
    creator.makePizza()
}

concreteClient(creator: CheesePizzaMaker())
concreteClient(creator: PepperoniPizzaMaker())
