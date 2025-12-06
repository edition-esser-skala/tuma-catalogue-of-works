\version "2.24.2"
\include "header.ly"

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Allegro"
    R1*4
    r2 c'4 c,
    r8 c' es g as4 h,
    r8 b d f g4 a,
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \dorian \time 4/4 \tempoMarkup "Allegro"
    f4^\partOrg f, r8 f' as c
    des4 e, r8 es g b
    c4 d,! r8 des f as
    b4 c,8 as' g f4 e8
    f, f' e d c d16 \hA e f g a h
    c4 r8 es, f f16 es d c h a
    g4 r8 d' es es16 d c b as g
  }
}

BassFigures = \figuremode {
  %tacet
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = "vl 2"
        \ViolinoII
      }
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
