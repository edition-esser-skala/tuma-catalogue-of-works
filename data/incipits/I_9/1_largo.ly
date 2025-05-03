\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 3/4 \tempoMarkup "Largo"
    e'2.\p
    e
    d
    d
    cis
    cis
    h
    c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 6/4 \tempoMarkup "Largo"
    cis'2.\p
    cis
    cis
    h
    h
    a
    a
    a
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \major \time 3/4 \tempoMarkup "Largo"
    r8 a'\p a a a, a'
    r a a a a, a'
    r fis fis fis fis, fis'
    r gis gis gis gis, gis'
    r e e e e, e'
    r fis fis fis fis, fis'
    r d d d d, d'
    r dis dis dis dis, \hA dis'
  }
}

BassFigures = \figuremode {
  r2.
  r
  <6 5>
  r
  q
  r
  q
  <7! 5>
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
