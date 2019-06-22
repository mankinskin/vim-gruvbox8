df <- data.frame(
  g8darkguinoft = c(000.730, 000.690, 000.720, 000.679, 000.788, 000.696, 000.686, 000.694, 000.692, 000.680, 000.682, 000.681, 000.690, 000.691, 000.687, 000.682, 000.684, 000.680, 000.691, 001.069),
  g8lightguinoft = c(001.499, 001.323, 001.357, 001.588, 001.320, 001.326, 001.340, 001.320, 001.335, 001.355, 001.326, 001.317, 001.317, 001.321, 001.360, 001.323, 001.319, 001.325, 001.425, 001.332),
  g8dark256noft = c(001.720, 001.721, 001.737, 002.104, 001.740, 001.809, 001.728, 001.756, 001.727, 001.787, 001.743, 001.732, 001.736, 001.749, 001.750, 001.771, 001.740, 001.762, 001.817, 001.756),
  g8light256noft = c(002.330, 003.147, 002.264, 002.259, 002.265, 002.311, 002.260, 002.262, 002.635, 002.266, 002.346, 002.604, 002.273, 002.388, 002.796, 002.264, 002.267, 002.278, 002.286, 002.448),
  g8darkgui = c(002.593, 002.586, 002.592, 002.628, 002.600, 003.352, 002.595, 002.593, 002.667, 002.667, 002.618, 002.609, 002.590, 002.811, 002.667, 002.595, 002.603, 002.601, 002.628, 002.904),
  g8lightgui = c(003.276, 003.263, 003.250, 003.667, 003.318, 003.274, 003.245, 004.610, 003.409, 003.219, 003.347, 003.252, 003.264, 003.323, 003.256, 003.641, 003.256, 003.250, 003.320, 003.267),
  g8dark256 = c(004.277, 004.458, 003.619, 003.342, 003.354, 003.381, 003.385, 003.320, 003.595, 003.386, 004.047, 003.340, 003.358, 003.318, 003.645, 003.437, 003.314, 003.478, 003.334, 003.394),
  g8light256 = c(003.911, 003.938, 003.872, 003.887, 003.991, 003.907, 003.873, 003.878, 003.894, 003.872, 004.046, 003.913, 003.878, 003.913, 003.908, 003.889, 004.159, 004.145, 003.914, 004.105),
  gruvboxdark = c(006.762, 006.521, 006.639, 006.509, 006.628, 006.648, 006.747, 006.598, 008.500, 006.526, 006.619, 006.715, 006.855, 010.302, 006.747, 006.545, 006.529, 006.531, 006.838, 006.645),
  gruvboxlight = c(006.702, 006.585, 006.700, 007.358, 011.127, 008.900, 006.966, 009.238, 006.963, 006.735, 006.536, 006.576, 006.524, 007.205, 006.578, 006.587, 006.634, 006.896, 007.480, 006.663)
)

names(df) <- c('Dark GUI', 'Light GUI', 'Dark 256', 'Light 256',
               'Dark GUI + extra', 'Light GUI + extra',
               'Dark 256 + extra', 'Light 256 + extra',
               'Gruvbox Dark', 'Gruvbox Light')
palette <- c(
  rgb(204,  36,  29, max=255), # red
  rgb(152, 151,  26, max=255), # green
  rgb(215, 153,  33, max=255), # yellow
  rgb( 69, 133, 136, max=255), # blue
  rgb(177,  98, 134, max=255), # purple
  rgb(104, 157, 106, max=255), # aqua
  rgb(214,  93,  14, max=255)  # orange
)
bg0 <- rgb(251, 241, 199, max = 255)
fg1 <- rgb( 60,  56,  54, max = 255)
oldpar <- par(no.readonly = T)
par(
  bg = bg0,
  fg = fg1,
  mar = c(9,4.2,4,2)+0.1
)

barplot(sapply(df, mean),
        main = "Gruvbox 8 vs Gruvbox - Performance",
        ylab = "Loading time (ms)",
        col.main = fg1, cex.main = 1.5,
        col.lab = fg1, cex.lab = 1.4,
        col.axis = fg1, cex.axis = 1.4,
        cex.names = 1.2,
        col = palette[c(rep(6,4),rep(3,4),rep(1,2))],
        border = palette[c(rep(6,4),rep(3,4),rep(1,2))],
        las = 2)

legend("topleft",
       legend = c("Gruvbox 8",
                  "Gruvbox 8 with extra hi groups",
                  "Original Gruvbox"),
       cex = 1.5,
       fill = palette[c(6,3,1)], border = palette[c(6,3,1)], bty = "n",
      x.intersp = 0.7, y.intersp = 0.9)

par(oldpar)
