\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \tempoMarkup "Vivace" \autoBeamOff
    R1*2
    a'4. a8 h4. h8
    c c c c b8. c16 d4
    d cis d r
    r r8 a d4 d8 d
  }
}

SopranoLyrics = \lyricmode {
  Ni -- si Do -- mi --
  nus ae -- di -- fi -- ca -- ve -- rit
  do -- _ mum,
  in va -- num "la -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "Vivace" \autoBeamOff
    R1*3
    r2 d4. d8
    e4. e8 f4 f
    e8[ d] e[ f] d4 d8 d
  }
}

AltoLyrics = \lyricmode {
  Ni -- si
  Do -- mi -- nus ae --
  di -- fi -- ca -- ve -- rit
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "Vivace" \autoBeamOff
    R1
    a4. a8 h4. h8
    c c c a a4 gis8 gis
    a2~ a8[ g16 fis] g8[ f]
    e4 r r r8 d
    a'4 a8 a g f g d
  }
}

TenoreLyrics = \lyricmode {
  Ni -- si Do -- mi --
  nus ae -- di -- fi -- ca -- ve -- rit
  do -- _
  mum, in
  va -- num la -- bo -- ra -- ve -- runt
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Vivace" \autoBeamOff
    d4. d8 e4. e8
    f4. f8 e d16[ c] h8 e16 d
    c4 f e2
    a,4 r r2
    r4 a d d8 d
    c! b c a \hA b4. b8
  }
}

BassoLyrics = \lyricmode {
  Ni -- si Do -- mi --
  nus ae -- di -- fi -- ca -- ve -- rit
  do -- _ _
  mum,
  in va -- num la --
  bo -- ra -- ve -- runt qui "ae -"
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Vivace"
    d4.-! d8-! e4.-! e8-!
    f4. f8 e d16 c h8 e16 d
    c4 f e2
    a,4 \clef tenor a'~ a8 g!16 fis g8 f
    e4 \clef bass a, d d8 d
    c! b c a \hA b4. b8
  }
}

BassFigures = \figuremode {
  r1
  <3>4. <\t>8 <5> <6> <8> <5>
  <6>2 <5 4>4 <\t _+>
  r2 <5 2->8 <3> <_-> <6>
  <7>4 <_+>2.
  <6>2 <6>8 <5> <6>4
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" "vl" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" "vla" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
        \set Staff.instrumentName = \markup \center-column { "org" "fag" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
