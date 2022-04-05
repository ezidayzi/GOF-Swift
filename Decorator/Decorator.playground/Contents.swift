// Component
protocol NotifierComponent {
    func notify(message: String)
}

// Concrete Component
class Notifier: NotifierComponent {
    func notify(message: String) {
        print(message+" 전송완료 ")
    }
}

// Decorator == Wrapper

protocol NotifierDecorator: NotifierComponent {
    var wrappee: NotifierComponent { get set }
    init(notifier: NotifierComponent)
}


// Concrete Decorator
class EmailDecorator: NotifierDecorator {
    var wrappee: NotifierComponent
    
    required init(notifier: NotifierComponent) {
        self.wrappee = notifier
    }
    
    func notify(message: String) {
        let to = getInfo()
        print("\(to)에게 Email로 \(message) 전송 완료")
        self.wrappee.notify(message: message)
    }
    
    func getInfo() -> String {
        print("보낼 Email 주소를 입력하세요: ", separator: "", terminator: "")
        return "ezidayzi@gmail.com"
    }
}


class SlackDecorator: NotifierDecorator {
    var wrappee: NotifierComponent
    
    required init(notifier: NotifierComponent) {
        self.wrappee = notifier
    }
    
    func notify(message: String) {
        let to = companyInfo()
        print("\(to) Slack 채널에 \(message) 전송 완료")
        self.wrappee.notify(message: message)
    }
    
    func companyInfo() -> String {
        print("보낼 Company 채널을 입력하세요: ", separator: "", terminator: "")
        return "sopt ios 파트"
    }
}


// Client
let notifier = Notifier()
let emailNotifier = EmailDecorator(notifier: notifier)
let slackNotifier = SlackDecorator(notifier: emailNotifier)
slackNotifier.notify(message: "Hello")
