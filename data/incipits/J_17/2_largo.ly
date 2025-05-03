\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key h \minor \time 3/4 \tempoMarkup "Largo"
    fis'4 g8( e) ais,( cis)
    d4 h gis'
    cis, e e
    fis h8( fis) dis( fis)
    g4 e, r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key h \minor \time 3/4 \tempoMarkup "Largo"
    R2.
    h'4 d8( gis,) eis( \hA gis)
    ais4 h cis
    h fis2
    r8 h h( a) a( g)
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key h \minor \time 3/4 \tempoMarkup "Largo"
    R2.*2
    fis4 g8 e ais, cis
    d4 cis h
    e8( g) g( fis) fis( e)
  }
}

BassFigures = \figuremode {
  r2.*2
  <_+>4 <6>2
  <6>4 <\t> <_+>
  r2.
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
