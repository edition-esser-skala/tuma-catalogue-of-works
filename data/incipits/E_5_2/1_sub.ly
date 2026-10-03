\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    a'1 h2 h4 h
    a2 d d cis
    d e4 fis d2. d4
    d2 cis h2. h4
    cis2 cis1 cis2
  }
}

SopranoLyrics = \lyricmode {
  Sub tu -- um prae --
  si -- di -- um con --
  fu -- gi -- mus, San -- cta
  De -- i Ge -- ni --
  trix, Vir -- go
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    r1 d
    fis e2 a4 g
    fis2. fis4 fis2 a
    g e fis e
    e1 r2 a
  }
}

AltoLyrics = \lyricmode {
  No --
  stras de -- pre -- _
  ca -- ti -- o -- nes
  ne de -- spi -- ci --
  as, et
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \major \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    R\breve
    r1 a2 a
    h2. h4 a1
    r d2. d4
    cis d e cis fis1
  }
}

TenoreLyrics = \lyricmode {
  Ne de --
  spi -- ci -- as,
  li -- be --
  ra _ nos _ "sem -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \major \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*2
    d2. d4 fis2 fis
    e a4 a a2 gis
    a a1 fis2
  }
}

BassoLyrics = \lyricmode {
  In ne -- ces -- si --
  ta -- ti -- bus no -- _
  stris, Vir -- go
}

Organo = {
  \relative c {
    \clef soprano
    \key d \major \time 4/2 \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    << {
      a''1 h
      a2 d
    } \\ {
      s1 d,
      fis
    } >> \clef tenor a,
    \clef bass d, fis
    e2 a a gis
    a a1 fis2
  }
}

BassFigures = \figuremode {
  r\breve
  r1 <4>2 <3>
  <6>\breve
  <7>1 <4 2>2 <6>
  r <5> <6>1
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
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
