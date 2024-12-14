\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    h'8( c) h( c) h( e)
    a,2.
    a8( h) a( h) a( h)
    gis2 r4
    a8 gis a h c a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    g'4 e g
    fis2.
    fis4 h, fis'
    e2.
    e4 a, a'
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    e4 e e
    e8( fis) e( fis) e( fis)
    dis4 dis dis
    d8( e) d( e) d( e)
    c4 c c~
  }
}

BassFigures = \figuremode {
  r2.
  <4 2>
  <6 5>
  <4\+ 2>
  <6>
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
