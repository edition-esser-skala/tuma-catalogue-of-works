\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Andante"
    R1
    r16 a''32\f gis a16 e cis a e cis a4 r
    r16 e''\p d cis h a g' e f f e d c b a' f
    g g f e d c b' g a f c a f8\f f'
    e f4 e8 r c\p c c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Andante"
    R1
    r16 a''32\f gis a16 e cis a e cis a4 r
    a\p r8 cis d4 r8 d
    e4 e8 e f4 a8\f a
    g a g4 r8 f\p f f
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    r2 r4 r8 d'^\tutti
    d8. cis16 cis8 e16 e f8 e d8. d16
    cis4 r r2
    r r4 f16 f f f
    e8 f16 f f8[ e] f4 r
  }
}

SopranoLyrics = \lyricmode {
  con --
  fu -- gi -- mus, San -- cta De -- i Ge -- ni --
  trix,
  in ne -- ces -- si --
  ta -- ti -- bus no -- stris,
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    r8 a'^\solo a g16 a \grace g8 f8. e16 d8 f^\tutti
    e8. e16 e8 r r2
    r4 e8^\solo e f f f f
    g g g b a16 g f8 r4
    r2 r8 f a g16[ f]
  }
}

AltoLyrics = \lyricmode {
  Sub tu -- um prae -- si -- di -- um con --
  fu -- gi -- mus,
  no -- stras de -- pre -- ca -- ti --
  o -- nes ne de -- spi -- ci -- as
  sed a "per -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    r2 r4 r8 a^\tutti
    a8. a16 a8 a16 a a8 a a g
    a4 r r2
    r r4 c16 c c c
    c8 c16 c d8[ c] c4 r
  }
}

TenoreLyrics = \lyricmode {
  con --
  fu -- gi -- mus, San -- cta De -- i Ge -- ni --
  trix,
  in ne -- ces -- si --
  ta -- ti -- bus no -- stris,
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    r2 r4 r8 d^\tutti
    a'8. a,16 a8 a16 a d8 c b8. b16
    a4 r r2
    r r4 f'16 g a b
    c8 a16 a b8[ c] f,4 r
  }
}

BassoLyrics = \lyricmode {
  con --
  fu -- gi -- mus, San -- cta De -- i Ge -- ni --
  trix,
  in ne -- ces -- si --
  ta -- ti -- bus no -- stris,
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Andante"
    d4-\solo cis d d16 e f-\tutti g
    a4 a, d8 c b4
    a r r2
    r r4 f'16 g a b
    c8 a b c f,4 r
  }
}

BassFigures = \figuremode {
  r4 <6>8 <5>2 <6>8
  <4>4 <_+>2 <7>8 <6>
  <_+>1
  r2. <8>8. \once \bassFigureExtendersOn q16
  r4 <6 5>2.
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
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

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
