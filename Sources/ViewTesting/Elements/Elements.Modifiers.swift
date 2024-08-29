import SwiftUI

extension Elements.Modifiers._Refreshable {
    func doRefresh() async {
        await node.asyncActions[0].castValue()
    }
}

extension Elements.Modifiers._Task {
    func doTask() async {
        await node.asyncActions[0].castValue()
    }
}

extension Elements.Modifiers._OnAppear {
    func doOnAppear() {
        node.actions[0].castValue()
    }
}
