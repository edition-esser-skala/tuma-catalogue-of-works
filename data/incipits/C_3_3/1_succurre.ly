\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio un poco"
    r16 c' d( c) d( c) e( c) g'32( a g16) r c, e( c) g'( e)
    c'32( d c16) r c, f( d) h( f) e8 g'32( a g16) f d h f
    e c'' a f \grace e8 d4\trill c16( g) g( e) c8 r
    e'2\p g
    f e8 r16 c\f d( c) e( c)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio un poco"
    g'4 r8 g e'( e,) r c'
    e e, r d c( e') r d,
    c c'4 h8\trill c16 g g e c8 r
    g'2\p e'
    d4 h c g\f
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio un poco" \autoBeamOff
    R1*2
    r2 r4 r8 c'^\solo
    c g r e' e c d e
    h h f' e d c r4
  }
}

SopranoLyrics = \lyricmode {
  Suc --
  cur -- re Re -- gi -- na tu -- i
  vir -- go o Ma -- ri -- a,
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio un poco"
    c8( c c c) c( c c c)
    c c d g c c, d g
    c f, g g, c4 c8 r
    c2\p c
    c c4 c8\f c
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  <7!>2 <8>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
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
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
