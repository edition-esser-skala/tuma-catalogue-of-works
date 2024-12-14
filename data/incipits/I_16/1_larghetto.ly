\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key c \minor \time 2/4 \tempoMarkup "Larghetto overo andante"
    \partial 8 g'8 c( g) es'( d)
    c4 r8 g
    c b \grace b as4\trill
    g r
    r8 b'16 as g( as) g( f)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key c \minor \time 2/4 \tempoMarkup "Larghetto overo andante"
    \partial 8 r8 r4 r8 g'
    c( g) es'( d)
    c4 r8 b
    g' f \grace f es4
    d r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key c \minor \time 2/4 \tempoMarkup "Larghetto overo andante"
    \partial 8 r8 r c' c,4
    r8 c' c,4
    r8 c' c, d
    es4 g8 a
    b b b, b
  }
}

BassFigures = \figuremode {
  r8 r2
  r
  <8>8 <7> <6> <\t>
  r4 <6>8 <\t>
  r2
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
