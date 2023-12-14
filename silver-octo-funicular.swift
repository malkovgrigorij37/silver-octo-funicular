case .addShape(let shapeData):
            newCollage.shapes.append(shapeData)
            
        case .changeBackground(let action):
            newCollage.background = shapeReducer.reduce(newCollage.background, action)
mutating func reduce(_ currentState: AppState,
                         _ action: GestureType) -> AppState {
        
        var newState = currentState
        
        switch action {
