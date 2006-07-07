\name{pie3D}
\alias{pie3D}
\title{Display a 3D pie chart}
\description{
 Displays a 3D pie chart with optional labels.
}
\usage{
 pie3D(x,edges=100,radius=1,height=0.3,theta=pi/6,start=0,border=par("fg"),
  col=NULL,labels=NULL,labelpos=NULL,labelcol=par("fg"),labelcex=1.5,
  explode=0,...)
}
\arguments{
 \item{x}{a numeric vector for which each value will be a sector}
 \item{edges}{the number of lines forming an ellipse}
 \item{radius}{the radius of the pie in user units}
 \item{height}{the height of the pie in user units}
 \item{theta}{The angle of viewing in radians}
 \item{start}{The angle at which to start drawing sectors.}
 \item{border}{The color of the sector border lines}
 \item{col}{The colors of the sectors}
 \item{labels}{Optional labels for each sector}
 \item{labelpos}{Optional positions for the labels}
 \item{labelcol}{The color of the labels}
 \item{labelcex}{The character expansion factor for the labels}
 \item{explode}{The amount to "explode" the pie in user units}
 \item{...}{graphical parameters passed to \code{plot}}
}
\value{
 The bisecting angle of the sectors in radians.
}
\details{
 \code{pie3D} scales the values in \code{x} so that they total 2*pi,
 dropping zeros and NAs. It then displays an empty plot, calculates
 the sequence for drawing the sectors and calls \code{draw.tilted.sector}
 to draw each sector. If labels are supplied, it will call \code{pie3D.label}
 to place a label for each sector. If supplied, the number of labels, label 
 positions and sector colors must be at least equal to the number of values 
 in \code{x}. If the labels are long, it may help to reduce the radius of
 the pie.
}
\note{
 Due to the somewhat primitive method used to draw sectors, a sector that
 extends beyond both pi/2 and 3*pi/2 radians in either direction will not
 display properly. Setting \code{start} to pi/2 will often fix this, but
 the user may have to adjust \code{start} and the order of sectors in extreme
 cases.
 While \code{pie3D} can be used to display a 2D pie chart by setting
 height=0 and theta=pi, the labels produced by \code{pie3D.labels} will
 not be well positioned. It is probably better to use \code{floating.pie}
 for this, or use \code{pie.labels} for the labels.
}
\author{Jim Lemon}
\seealso{\code{\link{pie3D.labels}}, \code{\link{draw.tilted.sector}}}
\examples{
 pieval<-c(2,4,6,8)
 pielabels<-
  c("We hate\n pies","We oppose\n  pies","We don't\n  care","We just love pies")
 pie3D(pieval,labels=pielabels,explode=0.1,main="3D PIE OPINIONS")
}
\keyword{misc}