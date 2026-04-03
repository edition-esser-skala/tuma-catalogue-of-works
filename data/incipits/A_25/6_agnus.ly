\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Largo"
    r2 r8 e16-\solo f g8 f
    e4 r r8 e16 f g8 f
    e4 r r8 f16 g a8 g
    f4 r r8 g16 a b8 a
    g4 r g f
    e2 d8 f16 g a8 b
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Largo"
    r2 r8 c16-\solo d e8 d
    c4 r r8 cis16 d e8 d
    cis4 r r8 d16 e f8 e
    d4 r r8 b16 c d8 c
    b4 r r d~
    d cis d d
  }
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    c'4^\solo g e e
    r g b b
    r8 b a e f4 f
    r f8 a a[ g] g4
    r g8 f es4 d
    a2 d,4 r
  }
}

BassoLyrics = \lyricmode {
  A -- gnus De -- i,
  qui tol -- lis
  pec -- ca -- ta mun -- di:
  Mi -- se -- re -- re,
  mi -- se -- re -- re
  no -- bis.
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c2-\solo c
    c cis
    cis d
    d g,
    g2. gis4
    a2 d4 r
  }
}

BassFigures = \figuremode {
  r1
  r2 <7->
  <\t>1
  r2 <10- 9>4 <\t 8>
  r2 <6->4 <7 5>
  <5 4> <\t _+>2.
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
