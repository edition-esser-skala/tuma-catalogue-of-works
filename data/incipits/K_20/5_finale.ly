\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \dorian \time 3/8 \tempoMarkup "[no tempo]"
    c''8^\partVi e,8. d32 \hA e
    f8 c r
    des a8. g32 \hA a
    b8 des r
    c e,4
    f16 g as b c8
    c16 des h8. c16
    c4 r8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 3/8 \tempoMarkup "[no tempo]"
    r8 g' g
    c g r
    r f f
    f f r
    r c c
    c as'4
    as8 f4
    e r8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \dorian \time 3/8 \tempoMarkup "[no tempo]"
    r8 c' b
    as e r
    r f es
    des b r
    r c b
    as f f'16 es
    des4.
    c8 c' b
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
