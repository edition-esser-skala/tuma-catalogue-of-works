\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Lento"
    \partial 8 f8\p c' c r16 c\f b16. as32 b8\p b r16 b\f as16. g32
    as8 as(-.\p as-. as-.) \grace as g4\fermata r8 c\pp
    des des f16( des) c( h) c8 c es!16( c) b( a)
    b8 b des16( b) as( g) as8 as c16( as) g( f)
    b8 b b b b as as as
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Lento"
    \partial 8 r8 as'\p as r16 as\f g16. f32 g8\p g r16 g\f f16. e32
    f8 f(-.\p f-. f-.) \grace f e4\fermata r
    f8\pp f f f es es es es
    des des des des c c c c
    b4 r8 g'! c,4. f8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \dorian \time 4/4 \tempoMarkup "Lento"
    \partial 8 r8 f\p f f f e e c\f c
    f h,-.\p h-. h-. c4\fermata r
    R1
    r2 r4 r8 f\pp
    ges ges b16( ges) f( e) f8 f as16( f) es( d!)
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
