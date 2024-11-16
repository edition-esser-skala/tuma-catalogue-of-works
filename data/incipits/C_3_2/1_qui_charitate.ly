\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Recitativo · Adagio"
    g'8 a16( g) g( c) c-! g-! a8 b16( a) a( f') f-! a,-!
    g2\p e'
    f1~
    f2 e
    g8\f a16( g) g( c) c-! g-! a2\p
    g8 a16( g) g( h) h( g) c4 a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Recitativo · Adagio"
    e8 f16( e) e8 e f g16( f) f( a) a-! f-!
    e2\p g
    f g~
    g1
    c8(\f c c c) c4\p a
    d2 g,4 a
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Recitativo · Adagio" \autoBeamOff
    R1
    r8 e^\solo c h c4 g8 c
    c4 h d8 g, r g
    d'8. d16 c8 h e4 e
    r2 r8 c f d
    h8. h16 h4 r c8 c
  }
}

TenoreLyrics = \lyricmode {
  Qui cha -- ri -- ta -- te ac --
  cen -- sus De -- um prae
  o -- mni -- bus ex -- qui -- rit,

  tri -- um -- phar
  e -- mi -- cat in -- ter
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Recitativo · Adagio"
    c8( c c c) c( c c c)
    c1\p
    d2 h~
    h c
    e8(\f e e e) f2\p
    f e4 fis
  }
}

BassFigures = \figuremode {
  r1
  r
  <7>4 <6> <6 5>2
  r1
  r
  <4 2>2 <6>4 <5>
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
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
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
