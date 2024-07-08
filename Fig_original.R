x11()

# Ajuste o tamanho do texto do eixo conforme necessário
op <- par(cex.axis = 1.6)

# LR
roc(test$CasosBin2, lr_orig_pred[,1], plot=TRUE, legacy.axes=TRUE, percent=TRUE,
    xlab="Falso Positivo", ylab="Verdadeiro Positivo", col="#377eb8",
    lwd=3, print.auc=TRUE, print.auc.x=30, print.auc.y=50, print.auc.cex=1.5, cex.lab = 1.3)  # Ajuste print.auc.cex conforme necessário

# LDA
plot.roc(test$CasosBin2, lda_orig_pred[,1], percent=TRUE, col="#4daf4a",
         lwd=3, print.auc=TRUE, add=TRUE, print.auc.x=30, print.auc.y=70, print.auc.cex=1.5)

# Decision Tree
plot.roc(test$CasosBin2, dt_orig_pred[,1], percent=TRUE, col="orangered2",
         lwd=3, print.auc=TRUE, add=TRUE, print.auc.x=30, print.auc.y=64, print.auc.cex=1.5)
# Naive Bayes
plot.roc(test$CasosBin2, nb_orig_pred[,1], percent=TRUE, col="violetred4",
         lwd=3, print.auc=TRUE, add=TRUE, print.auc.x=30, print.auc.y=57, print.auc.cex=1.5)

# Random Forest
plot.roc(test$CasosBin2, rf_orig_pred[,1], percent=TRUE, col="deeppink1",
         lwd=3, print.auc=TRUE, add=TRUE, print.auc.x=30, print.auc.y=44, print.auc.cex=1.5)

title(main="Conjunto original", font.main= 2, line=2.7, cex.main = 1.6)

legend("bottomright", legend=c("RL_Orig", "ADL_Orig", "AD_Orig", "NB_Orig", "FA_Orig"),
       col=c("#377eb8", "#4daf4a", "orangered2", "violetred4", "deeppink1"),
       lwd=3, cex=1.2, inset = c(0.03, 0.06))
par(pty = "m")

# Restaura as configurações gráficas originais
par(op)