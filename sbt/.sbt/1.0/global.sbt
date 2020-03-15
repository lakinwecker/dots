
shellPrompt := {
  (state: State) ⇒ "%s> ".format(Project.extract(state).currentProject.id)
}

Global / onChangedBuildSource := ReloadOnSourceChanges

