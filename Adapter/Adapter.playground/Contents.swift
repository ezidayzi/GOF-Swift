class Target {

    func request() -> String {
        return "Target: The default target's behavior."
    }
}

class Adaptee {

    public func specificRequest() -> String {
        return ".eetpadA eht fo roivaheb laicepS"
    }
}


class Adapter: Target {

    private var adaptee: Adaptee

    init(_ adaptee: Adaptee) {
        self.adaptee = adaptee
    }

    override func request() -> String {
        return "Adapter: (TRANSLATED) " + adaptee.specificRequest().reversed()
    }
}


class Client {
    static func someClientCode(target: Target) {
        print(target.request())
    }
}

Client.someClientCode(target: Target())

let adaptee = Adaptee()

print("Adaptee: " + adaptee.specificRequest())
        
Client.someClientCode(target: Adapter(adaptee))
