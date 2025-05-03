\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key fis \minor \time 3/2 \tempoMarkup "Largo"
    R1.*2
    e'2 cis'4( h) a2~
    a gis fis
    eis1 gis2
    a4 cis, d( cis) d( cis)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key fis \minor \time 3/2 \tempoMarkup "Largo"
    cis'2 a'4( gis) fis2~
    fis e d
    cis1 cis2
    d1 d2~
    d cis h
    a1 r2
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key fis \minor \time 3/2 \tempoMarkup "Largo"
    fis1 fis2
    gis1.
    a1 a,2
    h1 h2
    cis1 eis2
    fis1 r2
  }
}

BassFigures = \figuremode {
  r1.
  <7>2 <6> <5>
  r1.
  <7>2 <6> <5>
  <10+ 9> <\t 8> <5>
  r1.
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
}
