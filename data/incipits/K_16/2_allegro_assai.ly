\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \major \time 4/4 \tempoMarkup "Allegro assai"
    \partial 8 es'8 b' es, f, d' es es, r f'
    g es g a b b, r b'
    a f \hA a h c c, r c'~
    c b16 a b8 b, b'( as16 g) as8 as,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \major \time 4/4 \tempoMarkup "Allegro assai"
    \partial 8 r8 r4 r8 b' b' es, f, d'
    es es, r es' d b d e
    f f, r f' es c e fis
    g d r d c c, r c'
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key es \major \time 4/4 \tempoMarkup "Allegro assai"
    \partial 8 r8 es4 b'8 as g4 b
    es, c b g
    f d' c a
    g g'8 f e4 f8 es
  }
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
  >>
}
