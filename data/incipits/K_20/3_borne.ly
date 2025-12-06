\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 2/2 \tempoMarkup "Borne"
    \partial 4 f'4 e8 g c, b a c a f
    e g e c f4 c'
    a8 c a f d' f d a
    h d \hA h fis g4 g'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 2/2 \tempoMarkup "Borne"
    \partial 4 a'4
    g2 a4 f
    g c, a c
    c2 e
    d r4 c'
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \major \time 2/2 \tempoMarkup "Borne"
    \partial 4 f4 c'2 f,
    c4 e f e
    f2 d
    g4 a h e,
  }
}

BassFigures = \figuremode {
  %tacet
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
