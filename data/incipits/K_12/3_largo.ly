\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \lydian \time 3/4 \tempoMarkup "Largo"
      \once \override Staff.TimeSignature.style = #'single-digit
    b'4 as r8 r16 f'
    as,4 g r
    b'( es,) r8 r16 c'
    es,4 d r
    es8 b~ b es,~ es des'
    des b~ b e,~ e b'
    b4 as r
    g' e4. f8
    es4 d b'
    b,8 c c4.\trill b8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \lydian \time 3/4 \tempoMarkup "Largo"
      \once \override Staff.TimeSignature.style = #'single-digit
    g'4( f) r
    b,2 r4
    es b' as
    f2 r4
    es2.
    b'2 e,4
    c2 r4
    d' g,4. g8
    f4 f r
    b b a
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key es \lydian \time 3/4 \tempoMarkup "Largo"
      \once \override Staff.TimeSignature.style = #'single-digit
    es4 es2
    d4 es r
    g, g as
    b b as
    g g g
    g g g
    f2 r4
    b c c,
    a'! b r
    d es f
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
