package com.orchestrator.generator.action;

import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.project.Project;
import com.orchestrator.generator.ui.OrchestratorGeneratorDialog;
import org.jetbrains.annotations.NotNull;

public class GenerateOrchestratorProjectAction extends AnAction {

    @Override
    public void actionPerformed(@NotNull AnActionEvent e) {
        Project project = e.getProject();
        if (project != null) {
            OrchestratorGeneratorDialog dialog = new OrchestratorGeneratorDialog(project);
            dialog.show();
        }
    }

    @Override
    public void update(@NotNull AnActionEvent e) {
        e.getPresentation().setEnabledAndVisible(e.getProject() != null);
    }
}


