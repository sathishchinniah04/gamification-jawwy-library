import JawwyGamification

@objc(GamificationJawwyLibrary)
class GamificationJawwyLibrary: NSObject {

      @objc func loadGame(_ msisdn: String, baseUrl: String, subscriptionId: String, language: String, token: String) {
        print("open game action",msisdn,baseUrl,subscriptionId,language,token)
        DispatchQueue.main.async {
            // TODO: Need to modify below code based on the input VC present/push type
            
            let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            
            if var topController = keyWindow?.rootViewController {
                while let presentedViewController = topController.presentedViewController {
                    topController = presentedViewController
                }
                 Game.openGameList(controller: topController, language: "EN", msisdn: msisdn, baseUrl: baseUrl, token: token, complition: self.callBackHander(action:))
            }
            
        }
    }
    
    func callBackHander(action: GameAction) {
        switch action {
        case .back:
            print("Back button tapped")
        case .showRewards:
            break;
        case .dismissed:
            break;
        case .homeAction:
            break;
        case .backButton:
            break;
        @unknown default:
            break;
        }
    }
}
