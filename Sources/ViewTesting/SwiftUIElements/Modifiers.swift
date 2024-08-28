struct RefreshableReflection: ReflectionTree {
    let root: ReflectionNode

    func doRefresh() async {
        await asyncActions[0].value()
    }
}

struct TaskReflection: ReflectionTree {
    let root: ReflectionNode

    func runTask() async {
        await asyncActions[0].value()
    }
}

struct OnAppearReflection: ReflectionTree {
    let root: ReflectionNode

    func doOnAppear() {
        actions[0].value()
    }
}
