struct RefreshableReflection: ReflectionTree {
    let root: ReflectionNode

    func doRefresh() async {
        await root.asyncActions[0].value()
    }
}

struct TaskReflection: ReflectionTree {
    let root: ReflectionNode

    func runTask() async {
        await root.asyncActions[0].value()
    }
}

struct OnAppearReflection: ReflectionTree {
    let root: ReflectionNode

    func doOnAppear() {
        root.actions[0].value()
    }
}
