\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Allegretto"
    R1*4
    r2 r4 r8 h'
    c16 f \appoggiatura f8 e r16 gis, a \hA gis a d \appoggiatura d8 c r16 g a g
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "Allegretto" \autoBeamOff
    e4^\solo c a8 h16[ c] d8 c
    h16[ a] h8 r g g a16 h c8 b
    a16[ g] a8 a4 a8 h16[ c] d8 c
    h16[ a] h8 r4 r8 e c gis
    a2. gis4
    a r r2
  }
}

TenoreLyrics = \lyricmode {
  Al -- ma Re -- dem -- pto -- ris
  Ma -- ter, quae per -- vi -- a coe -- li
  por -- ta ma -- nes et stel -- la
  ma -- ris, et stel -- la
  ma -- _
  ris:
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Allegretto" \autoBeamOff
    r4 a'2^\solo f4
    d8 e16[ f] g8 f e16[ d] e8 r c
    c d16 e f8 e d16[ c] d8 d4
    d8 e16[ f] g8 f e16[ d] e8 r4
    r8 a f dis e4 e,
    a r r2
  }
}

BassoLyrics = \lyricmode {
  Al -- ma
  Re -- dem -- pto -- ris Ma -- ter, quae
  per -- vi -- a coe -- li por -- ta ma --
  nes et stel -- la ma -- ris,
  et stel -- la ma -- _
  ris:
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Allegretto"
    a'2-\solo f4 d
    g, h c e,
    f2 fis
    g4 h c4. h8
    a a' f! dis e4 e,
    a e' f e
  }
}

BassFigures = \figuremode {
  r1
  r2. <6>8 <5->
  r2 <6>
  r4 <6>8 <5>2 <6\\>8
  r4. <6 5>8 <4>4 <_+>
  r q <6>8 <5> <6>4
}

\score {
  <<
    \new StaffGroup \with { \smallGroupDistance } <<
      \new Staff {
        \set Staff.instrumentName = "vl"
        \Violino
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

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
