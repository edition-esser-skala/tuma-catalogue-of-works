\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*3
    r8 c''16 e, e8( dis) r16 d h' d, d8 cis
    r16 c a' c, b8 a16( gis) a8 dis,( e) a16 dis,
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    e'4 a, gis16[ a] h[ c] d8 c16[ h]
    c[ h] a8 r4 r r8 dis
    e h e16[ d] c[ h] c8.[ h32( a)] h4
    a r r2
    R1
  }
}

SopranoLyrics = \lyricmode {
  Al -- ma Re -- dem -- pto -- ris
  Ma -- ter, et
  stel -- la, stel -- la ma -- _
  ris:
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r4 r8 gis'^\solo
    a8. e16 e4 dis16[ e] fis[ g] a8 g16[ fis]
    g[ fis] e8 r gis a16[ e] a8 a[ gis]
    a4 r r2
    R1
  }
}

AltoLyrics = \lyricmode {
  Quae
  per -- vi -- a coe -- li por -- ta
  ma -- nes et stel -- la ma --
  ris:
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    a8-\solo h c d e d16 c h8 e
    a, h c g!16 a h8 a16 g fis8 h
    e, e'16 fis gis8 e a, f'? d e
    a,4 h8. a16 gis8 e a8. g?16
    f8 e d e f4 e8 f
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r4 <4>8 <_+> <6 5!>4 <4>8 <_+>
  <5> <6 4> <6-> <_+> <5> <6\\> <_+> <6\\>
}

\score {
  <<
    \new Staff \with { \smallStaffDistance } {
      \set Staff.instrumentName = "vl"
      \Violino
    }
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
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
