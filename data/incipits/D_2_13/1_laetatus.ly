\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Vivace"
    r8 \tuplet 3/2 8 { g''16-\solo fis g } g,4 r2
    R1
    r8 \tuplet 3/2 8 { g'16 fis g } \sbOn a, fis' \tuplet 3/2 8 { fis e fis } r8 \tuplet 3/2 8 { e16 dis e } fis, d' \tuplet 3/2 8 { d cis d }
    r8 \tuplet 3/2 8 { c16 h c } d, h' \tuplet 3/2 8 { h a h } c, a' \tuplet 3/2 8 { a g a } h, g' \tuplet 3/2 8 { g fis g } \sbOff
    a, g' a, g' a, fis' a, fis' g,4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Vivace"
    r8 \tuplet 3/2 8 { g''16-\solo fis g } g,4 r2
    R1
    h4 a g fis
    e d \sbOn c16 a' \tuplet 3/2 8 { a g a } h, g' \tuplet 3/2 8 { g fis g } \sbOff
    a, g' a, g' a, fis' a, fis' g,4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \tempoMarkup "Vivace" \autoBeamOff
    r4 r8 d'^\solo h16[ c h c] d[ e d e]
    g,[ a g a] h[ c h c] d[ e d e] c[ h] c[ d]
    h4 r r2
    R1
    r4 r8 d h16[ c h c] d[ e d e]
  }
}

SopranoLyrics = \lyricmode {
  Lae -- ta -- _
  _ _ _ _ tus
  sum,

  lae -- ta \hy
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \tempoMarkup "Vivace" \autoBeamOff
    r2 r4 r8 g^\solo
    h16[ c h c] d[ e d e] h[ c h c] a[ g] a[ h]
    g4 r r2
    R1
    r4 r8 a g16[ a g a] h[ c h c]
  }
}

TenoreLyrics = \lyricmode {
  Lae --
  ta -- _ _ _ tus
  sum,

  lae -- ta \hy
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Vivace"
    g'8-\solo a h fis g g, r g'
    g g, r g' g g, a d
    g,4 d' e h
    c g a8 fis g h
    c4 d8 d, g4 r8 g'
  }
}

BassFigures = \figuremode {
  r1
  r4. <6 4>8 <5 3>4 <7>
  r <4>8 <3> <9> <8> <4> <3>
  <9> <8> <4> <3> <9> r <9> <6>
  <6 5>2.. <6 4>8
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
