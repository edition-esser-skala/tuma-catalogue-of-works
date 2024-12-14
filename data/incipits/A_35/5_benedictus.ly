\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Larghetto"
    c8. \tuplet 3/2 16 { e32 d c } g'16 g g g c8 a,~ a16 c' c c
    f8 g,, g16 d''32( h) g16 f e8 c r16 e' e a, \gotoBar "6"
    \tuplet 3/2 8 { \sbOn c16 c, c a' g f \sbOff } e8 d c4 r
    c8.\p \tuplet 3/2 16 { e32 d c } c'16 c g g a8. h32( c) h4
    c,8. \tuplet 3/2 8 { e32( d c) } g'16 g g g g,4 r8 g'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Larghetto"
    c8. \tuplet 3/2 16 { e32 d c } g'16 g g g c8 a,~ a16 c' c c
    f8 g,, g16 d''32( h) g16 f e8 c r16 e' e a, \gotoBar "6"
    \tuplet 3/2 8 { \sbOn c16 c, c a' g f \sbOff } e8 d\trill c4 r
    c8.\p \tuplet 3/2 16 { e32 d c } c'16 c g g a8.\trill h32( c) h4\trill
    c,8. \tuplet 3/2 8 { e32( d c) } g'16 g g g g,4 r8 g'
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "6"
    r2 c8.[ \tuplet 3/2 16 { e32 d c] } g'16[ f] e[ d]
    c[ h] c8 r c c16[ f] f8. d16 c[ h]
    e8 c, r e' d16[ g, fis g] \tuplet 3/2 8 { \sbOn h[ a g d' c h] \sbOff }
  }
}

TenoreLyrics = \lyricmode {
  Be -- _ ne --
  di -- ctus, qui ve -- nit, __ _ qui
  ve -- nit in no -- \hy
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Larghetto"
    c8-\solo c h h a a e' e
    d c h h c c16 h c8 c \gotoBar "6"
    e f g g, c c h h
    a a e' e d d g g,
    c c c c h h h h
  }
}

BassFigures = \figuremode {
  r4 <6>2 q4
  r1
  r2. <6>4
  r2 <7>
  r <6>
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
